# Scientific Analysis Task: ITC Binding Kinetics

Estimate binding affinity, enthalpy, stoichiometry and association rates from supplied synthetic calorimetry exports. This task analyzes fixed traces; it does not provide interactive experimental acquisition.

**Task type:** Analysis of supplied synthetic data. **Source version:** 1.0.0.

All scientific specimens, measurements and instrument conditions are synthetic. These examples are not validated biological assays or clinical decision tools.

## Contents

- `TASK.md`: scientific task and required deliverable.
- `app/`: public scientific model, documentation and disclosed practice inputs where supplied.
- `Dockerfile`: the task's original dependency environment.

## Use

Build the environment with `docker build -t itc-binding-analysis .`.

Implement `app/itcreduce.py` using `TASK.md` and `app/MANUAL.md`. Run it on the disclosed worked batch:

```sh
docker run --rm -v "$PWD/app":/app itc-binding-analysis python3 /app/itcreduce.py /app/worked /app/report.json
```

`app/worked/reported.json` contains the worked batch's supplied answers. The analysis module is the deliverable and is not included as a completed solution.

## Execution evidence

On 2026-10-24 this published repository was run end to end: with the private reference installed in `app/`, the private grader found all 8 sealed experiments correct (reward 1); the unchanged starter got 0 of 8 (reward 0). These are local reference results in Docker, not blind solver results or platform approval.

## Reference and verifier

Reference implementations, held-out cases, expected results and grading code are kept in the private repository `science-task-solutions`, under `ITCBindingKinetics/`. They are excluded from this public repository. The public practice inputs and worked examples remain public by design.
