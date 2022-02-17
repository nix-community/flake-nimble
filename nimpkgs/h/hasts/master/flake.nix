{
  description = ''AST for various languages'';
  inputs.src-hasts-master.flake = false;
  inputs.src-hasts-master.type = "github";
  inputs.src-hasts-master.owner = "haxscramper";
  inputs.src-hasts-master.repo = "hasts";
  inputs.src-hasts-master.ref = "refs/heads/master";
  
  
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  outputs = { self, nixpkgs, src-hasts-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hasts-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hasts-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}