{
  description = ''soundex algorithm'';
  inputs.src-soundex-master.flake = false;
  inputs.src-soundex-master.type = "github";
  inputs.src-soundex-master.owner = "Kashiwara0205";
  inputs.src-soundex-master.repo = "soundex";
  inputs.src-soundex-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-soundex-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-soundex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-soundex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}