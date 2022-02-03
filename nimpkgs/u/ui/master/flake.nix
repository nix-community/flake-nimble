{
  description = ''A wrapper for libui'';
  inputs.src-ui-master.flake = false;
  inputs.src-ui-master.type = "github";
  inputs.src-ui-master.owner = "nim-lang";
  inputs.src-ui-master.repo = "ui";
  inputs.src-ui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ui-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}