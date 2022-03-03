{
  description = ''Lock-free threadsafe MPMC with high throughput'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-loony-0_1_0.flake = false;
  inputs.src-loony-0_1_0.type = "github";
  inputs.src-loony-0_1_0.owner = "shayanhabibi";
  inputs.src-loony-0_1_0.repo = "loony";
  inputs.src-loony-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-loony-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/balls".type = "github";
  # inputs."https://github.com/disruptek/balls".owner = "riinr";
  # inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";
  # inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/cps".type = "github";
  # inputs."https://github.com/disruptek/cps".owner = "riinr";
  # inputs."https://github.com/disruptek/cps".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/cps".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/cps".dir = "nimpkgs/h/https://github.com/disruptek/cps";
  # inputs."https://github.com/disruptek/cps".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/cps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-loony-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loony-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}