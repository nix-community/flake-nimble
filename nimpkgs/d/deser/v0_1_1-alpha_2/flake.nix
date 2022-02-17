{
  description = ''De/serialization library for Nim '';
  inputs.src-deser-v0_1_1-alpha_2.flake = false;
  inputs.src-deser-v0_1_1-alpha_2.type = "github";
  inputs.src-deser-v0_1_1-alpha_2.owner = "gabbhack";
  inputs.src-deser-v0_1_1-alpha_2.repo = "deser";
  inputs.src-deser-v0_1_1-alpha_2.ref = "refs/tags/v0.1.1-alpha.2";
  
  
  inputs."https://github.com/gabbhack/anycase-fork".type = "github";
  inputs."https://github.com/gabbhack/anycase-fork".owner = "riinr";
  inputs."https://github.com/gabbhack/anycase-fork".repo = "flake-nimble";
  inputs."https://github.com/gabbhack/anycase-fork".ref = "flake-pinning";
  inputs."https://github.com/gabbhack/anycase-fork".dir = "nimpkgs/h/https://github.com/gabbhack/anycase-fork";

  outputs = { self, nixpkgs, src-deser-v0_1_1-alpha_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deser-v0_1_1-alpha_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-deser-v0_1_1-alpha_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}