{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
  inputs.src-httpx-v0_2_0.flake = false;
  inputs.src-httpx-v0_2_0.type = "github";
  inputs.src-httpx-v0_2_0.owner = "xflywind";
  inputs.src-httpx-v0_2_0.repo = "httpx";
  inputs.src-httpx-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."ioselectors".type = "github";
  inputs."ioselectors".owner = "riinr";
  inputs."ioselectors".repo = "flake-nimble";
  inputs."ioselectors".ref = "flake-pinning";
  inputs."ioselectors".dir = "nimpkgs/i/ioselectors";

  outputs = { self, nixpkgs, src-httpx-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpx-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-httpx-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}