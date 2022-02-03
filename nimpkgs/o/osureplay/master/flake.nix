{
  description = ''osu! replay parser'';
  inputs.src-osureplay-master.flake = false;
  inputs.src-osureplay-master.type = "github";
  inputs.src-osureplay-master.owner = "Yardanico";
  inputs.src-osureplay-master.repo = "nim-osureplay";
  inputs.src-osureplay-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-osureplay-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osureplay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osureplay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}