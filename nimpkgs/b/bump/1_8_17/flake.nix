{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_8_17.flake = false;
  inputs.src-bump-1_8_17.type = "github";
  inputs.src-bump-1_8_17.owner = "disruptek";
  inputs.src-bump-1_8_17.repo = "bump";
  inputs.src-bump-1_8_17.ref = "refs/tags/1.8.17";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."https://github.com/disruptek/cutelog".type = "github";
  inputs."https://github.com/disruptek/cutelog".owner = "riinr";
  inputs."https://github.com/disruptek/cutelog".repo = "flake-nimble";
  inputs."https://github.com/disruptek/cutelog".ref = "flake-pinning";
  inputs."https://github.com/disruptek/cutelog".dir = "nimpkgs/h/https://github.com/disruptek/cutelog";

  outputs = { self, nixpkgs, src-bump-1_8_17, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_17;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_8_17"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}