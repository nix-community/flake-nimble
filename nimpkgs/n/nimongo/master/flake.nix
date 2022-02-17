{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
  inputs.src-nimongo-master.flake = false;
  inputs.src-nimongo-master.type = "github";
  inputs.src-nimongo-master.owner = "SSPkrolik";
  inputs.src-nimongo-master.repo = "nimongo";
  inputs.src-nimongo-master.ref = "refs/heads/master";
  
  
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, src-nimongo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimongo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimongo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}