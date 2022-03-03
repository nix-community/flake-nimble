{
  description = ''Lock-free threadsafe MPMC with high throughput'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-loony-0_1_6.flake = false;
  inputs.src-loony-0_1_6.type = "github";
  inputs.src-loony-0_1_6.owner = "shayanhabibi";
  inputs.src-loony-0_1_6.repo = "loony";
  inputs.src-loony-0_1_6.ref = "refs/tags/0.1.6";
  inputs.src-loony-0_1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/balls".type = "github";
  # inputs."https://github.com/disruptek/balls".owner = "riinr";
  # inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";
  # inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/nim-works/cps".type = "github";
  # inputs."https://github.com/nim-works/cps".owner = "riinr";
  # inputs."https://github.com/nim-works/cps".repo = "flake-nimble";
  # inputs."https://github.com/nim-works/cps".ref = "flake-pinning";
  # inputs."https://github.com/nim-works/cps".dir = "nimpkgs/h/https://github.com/nim-works/cps";
  # inputs."https://github.com/nim-works/cps".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/nim-works/cps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-loony-0_1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loony-0_1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}