{
  description = ''Nim module for better URI handling'';
  inputs.src-uri2-master.flake = false;
  inputs.src-uri2-master.type = "github";
  inputs.src-uri2-master.owner = "achesak";
  inputs.src-uri2-master.repo = "nim-uri2";
  inputs.src-uri2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-uri2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uri2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uri2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}