{
  description = ''De/serialization library for Nim '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-deser-v0_1_2.flake = false;
  inputs.src-deser-v0_1_2.type = "github";
  inputs.src-deser-v0_1_2.owner = "gabbhack";
  inputs.src-deser-v0_1_2.repo = "deser";
  inputs.src-deser-v0_1_2.ref = "refs/tags/v0.1.2";
  inputs.src-deser-v0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/gabbhack/anycase-fork".type = "github";
  # inputs."https://github.com/gabbhack/anycase-fork".owner = "riinr";
  # inputs."https://github.com/gabbhack/anycase-fork".repo = "flake-nimble";
  # inputs."https://github.com/gabbhack/anycase-fork".ref = "flake-pinning";
  # inputs."https://github.com/gabbhack/anycase-fork".dir = "nimpkgs/h/https://github.com/gabbhack/anycase-fork";
  # inputs."https://github.com/gabbhack/anycase-fork".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/gabbhack/anycase-fork".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-deser-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deser-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}