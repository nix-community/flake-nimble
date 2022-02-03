{
  description = ''Extends stdlib make it easy on some case'';
  inputs.src-stdext-master.flake = false;
  inputs.src-stdext-master.type = "github";
  inputs.src-stdext-master.owner = "zendbit";
  inputs.src-stdext-master.repo = "nim.stdext";
  inputs.src-stdext-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stdext-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stdext-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}