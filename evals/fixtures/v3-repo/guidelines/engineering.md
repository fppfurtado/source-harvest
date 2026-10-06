# Engineering guidelines

- Tests sit next to the code they test (`*.test.ts`). A bug fix lands with the test that reproduces it.
- Prefer composition over configuration flags; a component with more than five boolean props is split.
- CI runs `build/check_skills.py`, the type check and the unit tests on every pull request.
- Keep the API stateless; session state lives in the client.
