{
  description = ''Password generation library in Nim'';
  inputs.src-passgen-0_1_0.flake = false;
  inputs.src-passgen-0_1_0.type = "github";
  inputs.src-passgen-0_1_0.owner = "rustomax";
  inputs.src-passgen-0_1_0.repo = "nim-passgen";
  inputs.src-passgen-0_1_0.ref = "refs/tags/0.1.0";
  
  
  inputs."urand".type = "github";
  inputs."urand".owner = "riinr";
  inputs."urand".repo = "flake-nimble";
  inputs."urand".ref = "flake-pinning";
  inputs."urand".dir = "nimpkgs/u/urand";

  outputs = { self, nixpkgs, src-passgen-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-passgen-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-passgen-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}