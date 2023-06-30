package com.dslearn.service;

import com.dslearn.dto.DeliverRevisionDTO;
import com.dslearn.entities.Deliver;
import com.dslearn.repositories.DeliverRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class DeliverService {

    @Autowired
    private DeliverRepository repository;

    @Transactional
    public void saveRevision(Long id, DeliverRevisionDTO dto) {
        Deliver deliver = repository.getOne(id);
        objectsInstance(dto, deliver);
        repository.save(deliver);
    }

    private static void objectsInstance(DeliverRevisionDTO dto, Deliver deliver) {
        deliver.setStatus(dto.getStatus());
        deliver.setFeedback(dto.getFeedback());
        deliver.setCorrectCount(dto.getCorrectCount());
    }
}
