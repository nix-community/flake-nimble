{
  description = ''zlib wrapper for Nim'';
  inputs.src-zlib-master.flake = false;
  inputs.src-zlib-master.type = "github";
  inputs.src-zlib-master.owner = "status-im";
  inputs.src-zlib-master.repo = "nim-zlib";
  inputs.src-zlib-master.ref = "refs/heads/master";
  
  
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-zlib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zlib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zlib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}