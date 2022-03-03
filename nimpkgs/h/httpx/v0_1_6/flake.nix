{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpx-v0_1_6.flake = false;
  inputs.src-httpx-v0_1_6.type = "github";
  inputs.src-httpx-v0_1_6.owner = "xflywind";
  inputs.src-httpx-v0_1_6.repo = "httpx";
  inputs.src-httpx-v0_1_6.ref = "refs/tags/v0.1.6";
  inputs.src-httpx-v0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."ioselectors".type = "github";
  # inputs."ioselectors".owner = "riinr";
  # inputs."ioselectors".repo = "flake-nimble";
  # inputs."ioselectors".ref = "flake-pinning";
  # inputs."ioselectors".dir = "nimpkgs/i/ioselectors";
  # inputs."ioselectors".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."ioselectors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-httpx-v0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpx-v0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpx-v0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}