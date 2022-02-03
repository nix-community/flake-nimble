{
  description = ''Max wrapper for omni.'';
  inputs.src-omnimax-master.flake = false;
  inputs.src-omnimax-master.type = "github";
  inputs.src-omnimax-master.owner = "vitreo12";
  inputs.src-omnimax-master.repo = "omnimax";
  inputs.src-omnimax-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-omnimax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-omnimax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-omnimax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}