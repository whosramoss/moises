# 1.0.0
- feat: add `MoisesApplication` getter on `MoisesApiClient`
    - add `application` endpoint  
- feat: add `MoisesJob` getter on `MoisesApiClient`
    - add `job` endpoint(s)  
- chore: create unit tests
- chore: create exceptions


# 1.0.1
- feat: Add `Codecov` integration tests
- chore: format files
- chore: update tests

# 2.0.0
- docs: update README and examples
- chore: update dependencies
- feat: add `MoisesUpload` getter on `MoisesApiClient`
    - add `upload` endpoint  
- feat: add `MoisesWorkFlow` getter on `MoisesApiClient`.
    - add `workflow` endpoint.
- feat: add `batchName`, `size` and `page` property in `MoisesJobFilterModel`.
- feat: add `metadata` property in `MoisesJobModel`.
- feat: add `metadata` property in `MoisesNewJobModel` 
- hotfix: fix `MoisesException`
- BREAKING: hotfix: change base api endpoint
- BREAKING: refactor: remove deprecated  `MoisesWorkflowEnum` and `MoisesNewJobParamsModel` 
