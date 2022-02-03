{
  description = ''github api'';
  inputs.src-github-master.flake = false;
  inputs.src-github-master.type = "github";
  inputs.src-github-master.owner = "disruptek";
  inputs.src-github-master.repo = "github";
  inputs.src-github-master.ref = "refs/heads/master";
  
  
  inputs."npeg".url = "path:../../../n/npeg";
  inputs."npeg".type = "github";
  inputs."npeg".owner = "riinr";
  inputs."npeg".repo = "flake-nimble";
  inputs."npeg".ref = "flake-pinning";
  inputs."npeg".dir = "nimpkgs/n/npeg";

  
  inputs."https://github.com/disruptek/rest.git".url = "path:../../../h/https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type = "github";
  inputs."https://github.com/disruptek/rest.git".owner = "riinr";
  inputs."https://github.com/disruptek/rest.git".repo = "flake-nimble";
  inputs."https://github.com/disruptek/rest.git".ref = "flake-pinning";
  inputs."https://github.com/disruptek/rest.git".dir = "nimpkgs/h/https://github.com/disruptek/rest.git";

  outputs = { self, nixpkgs, src-github-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-github-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-github-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}