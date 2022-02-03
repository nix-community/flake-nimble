{
  description = ''A Smalltalk and Rebol inspired language implemented as an AST interpreter'';
  inputs.src-spry-master.flake = false;
  inputs.src-spry-master.type = "github";
  inputs.src-spry-master.owner = "gokr";
  inputs.src-spry-master.repo = "spry";
  inputs.src-spry-master.ref = "refs/heads/master";
  
  
  inputs."spryvm".url = "path:../../../s/spryvm";
  inputs."spryvm".type = "github";
  inputs."spryvm".owner = "riinr";
  inputs."spryvm".repo = "flake-nimble";
  inputs."spryvm".ref = "flake-pinning";
  inputs."spryvm".dir = "nimpkgs/s/spryvm";

  outputs = { self, nixpkgs, src-spry-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spry-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spry-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}