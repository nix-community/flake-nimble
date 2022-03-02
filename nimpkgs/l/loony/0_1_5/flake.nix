{
  description = ''Lock-free threadsafe MPMC with high throughput'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-loony-0_1_5.flake = false;
  inputs.src-loony-0_1_5.type = "github";
  inputs.src-loony-0_1_5.owner = "shayanhabibi";
  inputs.src-loony-0_1_5.repo = "loony";
  inputs.src-loony-0_1_5.ref = "refs/tags/0.1.5";
  inputs.src-loony-0_1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-loony-0_1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loony-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}