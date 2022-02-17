{
  description = ''Userspace SCTP bindings'';
  inputs.src-sctp-master.flake = false;
  inputs.src-sctp-master.type = "github";
  inputs.src-sctp-master.owner = "metacontainer";
  inputs.src-sctp-master.repo = "sctp.nim";
  inputs.src-sctp-master.ref = "refs/heads/master";
  
  
  inputs."reactor".type = "github";
  inputs."reactor".owner = "riinr";
  inputs."reactor".repo = "flake-nimble";
  inputs."reactor".ref = "flake-pinning";
  inputs."reactor".dir = "nimpkgs/r/reactor";

  outputs = { self, nixpkgs, src-sctp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sctp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sctp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}