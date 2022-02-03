{
  description = ''untitled shell history application'';
  inputs.src-usha-master.flake = false;
  inputs.src-usha-master.type = "github";
  inputs.src-usha-master.owner = "subsetpark";
  inputs.src-usha-master.repo = "untitled-shell-history-application";
  inputs.src-usha-master.ref = "refs/heads/master";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-usha-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-usha-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-usha-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}