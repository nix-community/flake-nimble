{
  description = ''BGFX wrapper for the nim programming language.'';
  inputs.src-bgfx-master.flake = false;
  inputs.src-bgfx-master.type = "github";
  inputs.src-bgfx-master.owner = "Halsys";
  inputs.src-bgfx-master.repo = "nim-bgfx";
  inputs.src-bgfx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-bgfx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bgfx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bgfx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}