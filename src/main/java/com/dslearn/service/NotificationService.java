package com.dslearn.service;

import com.dslearn.dto.NotificationDTO;
import com.dslearn.entities.Notification;
import com.dslearn.entities.User;
import com.dslearn.repositories.NotificationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class NotificationService {

    @Autowired
    private AuthService authService;

    @Autowired
    private NotificationRepository repository;

    @Transactional(readOnly = true)
    public Page<NotificationDTO> notificationsForCurrentUser(Pageable pageable) {
        User user = authService.authenticated();
        Page<Notification> page = repository.findByUser(user, pageable);

        return page.map(NotificationDTO::new);
    }
}
