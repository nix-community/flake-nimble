{
  description = ''SuperCollider wrapper for omni.'';
  inputs.src-omnicollider-master.flake = false;
  inputs.src-omnicollider-master.type = "github";
  inputs.src-omnicollider-master.owner = "vitreo12";
  inputs.src-omnicollider-master.repo = "omnicollider";
  inputs.src-omnicollider-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."omni".url = "path:../../../o/omni";
  inputs."omni".type = "github";
  inputs."omni".owner = "riinr";
  inputs."omni".repo = "flake-nimble";
  inputs."omni".ref = "flake-pinning";
  inputs."omni".dir = "nimpkgs/o/omni";

  outputs = { self, nixpkgs, src-omnicollider-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnicollider-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omnicollider-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}