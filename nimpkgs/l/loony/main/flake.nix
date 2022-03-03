{
  description = ''Lock-free threadsafe MPMC with high throughput'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-loony-main.flake = false;
  inputs.src-loony-main.type = "github";
  inputs.src-loony-main.owner = "shayanhabibi";
  inputs.src-loony-main.repo = "loony";
  inputs.src-loony-main.ref = "refs/heads/main";
  inputs.src-loony-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-loony-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loony-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}