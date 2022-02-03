{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
  inputs.src-httpx-master.flake = false;
  inputs.src-httpx-master.type = "github";
  inputs.src-httpx-master.owner = "xflywind";
  inputs.src-httpx-master.repo = "httpx";
  inputs.src-httpx-master.ref = "refs/heads/master";
  
  
  inputs."ioselectors".url = "path:../../../i/ioselectors";
  inputs."ioselectors".type = "github";
  inputs."ioselectors".owner = "riinr";
  inputs."ioselectors".repo = "flake-nimble";
  inputs."ioselectors".ref = "flake-pinning";
  inputs."ioselectors".dir = "nimpkgs/i/ioselectors";

  outputs = { self, nixpkgs, src-httpx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}