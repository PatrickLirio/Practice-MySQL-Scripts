# Practice MySQL Scripts

A curated collection of MySQL example and practice scripts for learning, testing, and demonstrating common SQL operations and patterns.

This repository is intended for students, developers, and DBAs who want hands‑on exercises ranging from basic queries to more advanced data manipulation, schema design, and procedural SQL.

---

## Repository layout (typical)

> Note: If your repository differs, update these paths to match your actual folders.

- `setup/` — Scripts to create sample databases, tables, and seed data (idempotent where possible).
- `examples/` — Focused SQL examples demonstrating specific concepts (joins, aggregation, subqueries, indexing, transactions, stored procedures, etc.).
- `exercises/` — Practice problems that include input data and expected results or test queries.
- `utils/` — Helper scripts such as data generators, import/export instructions, or small utilities.
- `docs/` — (Optional) Notes, schema diagrams, and explanation files for complex examples.

Files aim to be readable and self-contained; each SQL file should include a short header comment describing its purpose and any preconditions.

---

## Topics covered (examples)

- Basic DML: SELECT, INSERT, UPDATE, DELETE
- JOINs: INNER, LEFT, RIGHT, CROSS
- Aggregation: GROUP BY, HAVING, window functions
- Subqueries and derived tables
- Indexing, explain plans, and basic query optimization tips
- Transactions, isolation levels, and error handling
- Stored procedures, functions, and triggers
- Data modeling and schema normalization examples

---

## Conventions & best practices used in this repo

- Filenames are prefixed with numbers to indicate an example progression (e.g., `01-`, `10-`, `20-`).
- Scripts include comments explaining:
  - Purpose
  - Preconditions (required DB/schema)
  - Expected output or assertions (if any)
- Prefer idempotent scripts (check for existence before creating objects) so examples can be re-run safely.
- Keep examples small and focused; point larger demos to a README inside their folder.

---

## How to contribute

Contributions are welcome — add examples, fix typos, or improve explanations.

Suggested workflow:
1. Fork the repository.
2. Add or improve SQL scripts and include clear comments and expected results.
3. Add a small README in new directories explaining how to run their scripts.
4. Open a pull request describing the change and why it’s helpful.

Guidelines:
- Add tests or example outputs where practical.
- Keep changes small and focused.
- Use descriptive filenames and include sample data loaders if adding datasets.

---

## License

If you want others to reuse these scripts, add a LICENSE file (e.g., MIT). If no license is present, default repository restrictions apply.

---

## Contact / Issues

If something is unclear or you want a new example added, please open an issue in this repository or reach out to the repository owner.

