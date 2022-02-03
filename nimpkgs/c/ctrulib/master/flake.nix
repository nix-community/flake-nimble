{
  description = ''ctrulib wrapper'';
  inputs.src-ctrulib-master.flake = false;
  inputs.src-ctrulib-master.type = "github";
  inputs.src-ctrulib-master.owner = "skyforce77";
  inputs.src-ctrulib-master.repo = "ctrulib-nim";
  inputs.src-ctrulib-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ctrulib-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ctrulib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ctrulib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}