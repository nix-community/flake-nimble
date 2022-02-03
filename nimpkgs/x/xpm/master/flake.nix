{
  description = ''X-Pixmap & NetPBM'';
  inputs.src-xpm-master.flake = false;
  inputs.src-xpm-master.type = "github";
  inputs.src-xpm-master.owner = "juancarlospaco";
  inputs.src-xpm-master.repo = "xpm";
  inputs.src-xpm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xpm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xpm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xpm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}