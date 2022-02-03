{
  description = ''Minimalistic Kernel-Syslogd For Linux in Nim'';
  inputs.src-kslog-master.flake = false;
  inputs.src-kslog-master.type = "github";
  inputs.src-kslog-master.owner = "c-blake";
  inputs.src-kslog-master.repo = "kslog";
  inputs.src-kslog-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-kslog-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kslog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kslog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}