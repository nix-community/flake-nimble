{
  description = ''Sha1 and Sha2 implementations'';
  inputs.src-libsha-master.flake = false;
  inputs.src-libsha-master.type = "github";
  inputs.src-libsha-master.owner = "forlan-ua";
  inputs.src-libsha-master.repo = "nim-libsha";
  inputs.src-libsha-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-libsha-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsha-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libsha-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}