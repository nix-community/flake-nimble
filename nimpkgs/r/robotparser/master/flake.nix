{
  description = ''Determine if a useragent can access a URL using robots.txt'';
  inputs.src-robotparser-master.flake = false;
  inputs.src-robotparser-master.type = "github";
  inputs.src-robotparser-master.owner = "achesak";
  inputs.src-robotparser-master.repo = "nim-robotparser";
  inputs.src-robotparser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-robotparser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-robotparser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-robotparser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}