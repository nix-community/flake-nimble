{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-master.flake = false;
  inputs.src-bump-master.type = "github";
  inputs.src-bump-master.owner = "disruptek";
  inputs.src-bump-master.repo = "bump";
  inputs.src-bump-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/disruptek/cutelog".url = "path:../../../h/https://github.com/disruptek/cutelog";
  inputs."https://github.com/disruptek/cutelog".type = "github";
  inputs."https://github.com/disruptek/cutelog".owner = "riinr";
  inputs."https://github.com/disruptek/cutelog".repo = "flake-nimble";
  inputs."https://github.com/disruptek/cutelog".ref = "flake-pinning";
  inputs."https://github.com/disruptek/cutelog".dir = "nimpkgs/h/https://github.com/disruptek/cutelog";

  
  inputs."https://github.com/disruptek/balls".url = "path:../../../h/https://github.com/disruptek/balls";
  inputs."https://github.com/disruptek/balls".type = "github";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}