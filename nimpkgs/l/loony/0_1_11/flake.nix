{
  description = ''Lock-free threadsafe MPMC with high throughput'';
  inputs.src-loony-0_1_11.flake = false;
  inputs.src-loony-0_1_11.type = "github";
  inputs.src-loony-0_1_11.owner = "shayanhabibi";
  inputs.src-loony-0_1_11.repo = "loony";
  inputs.src-loony-0_1_11.ref = "refs/tags/0.1.11";
  
  
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  
  inputs."https://github.com/nim-works/cps".type = "github";
  inputs."https://github.com/nim-works/cps".owner = "riinr";
  inputs."https://github.com/nim-works/cps".repo = "flake-nimble";
  inputs."https://github.com/nim-works/cps".ref = "flake-pinning";
  inputs."https://github.com/nim-works/cps".dir = "nimpkgs/h/https://github.com/nim-works/cps";

  outputs = { self, nixpkgs, src-loony-0_1_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loony-0_1_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loony-0_1_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}