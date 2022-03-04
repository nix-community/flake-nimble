{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpx-v0_2_2.flake = false;
  inputs.src-httpx-v0_2_2.type = "github";
  inputs.src-httpx-v0_2_2.owner = "xflywind";
  inputs.src-httpx-v0_2_2.repo = "httpx";
  inputs.src-httpx-v0_2_2.ref = "refs/tags/v0.2.2";
  inputs.src-httpx-v0_2_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ioselectors".type = "github";
  inputs."ioselectors".owner = "riinr";
  inputs."ioselectors".repo = "flake-nimble";
  inputs."ioselectors".ref = "flake-pinning";
  inputs."ioselectors".dir = "nimpkgs/i/ioselectors";
  inputs."ioselectors".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpx-v0_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpx-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpx-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}