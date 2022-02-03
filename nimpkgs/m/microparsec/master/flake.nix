{
  description = ''A performant Nim parsing library built for humans.'';
  inputs.src-microparsec-master.flake = false;
  inputs.src-microparsec-master.type = "github";
  inputs.src-microparsec-master.owner = "schneiderfelipe";
  inputs.src-microparsec-master.repo = "microparsec";
  inputs.src-microparsec-master.ref = "refs/heads/master";
  
  
  inputs."result".url = "path:../../../r/result";
  inputs."result".type = "github";
  inputs."result".owner = "riinr";
  inputs."result".repo = "flake-nimble";
  inputs."result".ref = "flake-pinning";
  inputs."result".dir = "nimpkgs/r/result";

  outputs = { self, nixpkgs, src-microparsec-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-microparsec-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-microparsec-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}