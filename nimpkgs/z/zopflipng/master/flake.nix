{
  description = ''zopflipng-like png optimization'';
  inputs.src-zopflipng-master.flake = false;
  inputs.src-zopflipng-master.type = "github";
  inputs.src-zopflipng-master.owner = "bung87";
  inputs.src-zopflipng-master.repo = "zopflipng";
  inputs.src-zopflipng-master.ref = "refs/heads/master";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";

  outputs = { self, nixpkgs, src-zopflipng-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zopflipng-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zopflipng-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}