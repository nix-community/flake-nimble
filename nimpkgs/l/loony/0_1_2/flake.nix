{
  description = ''Lock-free threadsafe MPMC with high throughput'';
  inputs.src-loony-0_1_2.flake = false;
  inputs.src-loony-0_1_2.type = "github";
  inputs.src-loony-0_1_2.owner = "shayanhabibi";
  inputs.src-loony-0_1_2.repo = "loony";
  inputs.src-loony-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  
  inputs."https://github.com/disruptek/cps".type = "github";
  inputs."https://github.com/disruptek/cps".owner = "riinr";
  inputs."https://github.com/disruptek/cps".repo = "flake-nimble";
  inputs."https://github.com/disruptek/cps".ref = "flake-pinning";
  inputs."https://github.com/disruptek/cps".dir = "nimpkgs/h/https://github.com/disruptek/cps";

  outputs = { self, nixpkgs, src-loony-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loony-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}