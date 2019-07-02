# MCConsensus.toolbox

## Model
- `Value <- [model value] {a, b, c}`

This generates 3 additional distinct states, 
namely, `chosen = {a}`, `chosen = {b}`, and `chosen = {c}`,
besides the initial state.

- `Value <- [model value] <symmetrical> {a, b, c}`

This generates only a single additional distinct states, 
namely, `chosen = {a}`, besides the initial state.
