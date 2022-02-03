{
  description = ''KWin JavaScript API wrapper'';
  inputs.src-kwin-master.flake = false;
  inputs.src-kwin-master.type = "github";
  inputs.src-kwin-master.owner = "reactormonk";
  inputs.src-kwin-master.repo = "nim-kwin";
  inputs.src-kwin-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kwin-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kwin-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kwin-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}