{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';
  inputs.src-procs-master.flake = false;
  inputs.src-procs-master.type = "github";
  inputs.src-procs-master.owner = "c-blake";
  inputs.src-procs-master.repo = "procs";
  inputs.src-procs-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-procs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-procs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-procs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}