{
  description = ''Executable for finding information about programs in PATH'';
  inputs.src-about-master.flake = false;
  inputs.src-about-master.type = "github";
  inputs.src-about-master.owner = "aleandros";
  inputs.src-about-master.repo = "about";
  inputs.src-about-master.ref = "refs/heads/master";
  
  
  inputs."docopt".url = "path:../../../d/docopt";
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-about-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-about-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-about-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}