{
  description = ''Nim module for generating URL identifiers for Tiny URL and bit.ly-like URLs'';
  inputs.src-shorturl-master.flake = false;
  inputs.src-shorturl-master.type = "github";
  inputs.src-shorturl-master.owner = "achesak";
  inputs.src-shorturl-master.repo = "nim-shorturl";
  inputs.src-shorturl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shorturl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shorturl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shorturl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}