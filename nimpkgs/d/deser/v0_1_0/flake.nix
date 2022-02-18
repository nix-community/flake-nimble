{
  description = ''De/serialization library for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-deser-v0_1_0.flake = false;
  inputs.src-deser-v0_1_0.type = "github";
  inputs.src-deser-v0_1_0.owner = "gabbhack";
  inputs.src-deser-v0_1_0.repo = "deser";
  inputs.src-deser-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/gabbhack/anycase-fork".type = "github";
  inputs."https://github.com/gabbhack/anycase-fork".owner = "riinr";
  inputs."https://github.com/gabbhack/anycase-fork".repo = "flake-nimble";
  inputs."https://github.com/gabbhack/anycase-fork".ref = "flake-pinning";
  inputs."https://github.com/gabbhack/anycase-fork".dir = "nimpkgs/h/https://github.com/gabbhack/anycase-fork";

  outputs = { self, nixpkgs, flakeNimbleLib, src-deser-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}