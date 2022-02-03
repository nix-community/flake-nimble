{
  description = ''Humanize elapsed time'';
  inputs.src-eternity-master.flake = false;
  inputs.src-eternity-master.type = "github";
  inputs.src-eternity-master.owner = "hiteshjasani";
  inputs.src-eternity-master.repo = "nim-eternity";
  inputs.src-eternity-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-eternity-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eternity-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eternity-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}