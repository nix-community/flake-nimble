{
  description = ''A performant Nim parsing library built for humans.'';
  inputs.src-microparsec-v0_1-alpha.flake = false;
  inputs.src-microparsec-v0_1-alpha.type = "github";
  inputs.src-microparsec-v0_1-alpha.owner = "schneiderfelipe";
  inputs.src-microparsec-v0_1-alpha.repo = "microparsec";
  inputs.src-microparsec-v0_1-alpha.ref = "refs/tags/v0.1-alpha";
  
  
  inputs."result".url = "path:../../../r/result";
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";

  outputs = { self, nixpkgs, src-microparsec-v0_1-alpha, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microparsec-v0_1-alpha;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-microparsec-v0_1-alpha"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}