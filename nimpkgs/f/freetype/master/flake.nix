{
  description = ''wrapper for FreeType2 library'';
  inputs.src-freetype-master.flake = false;
  inputs.src-freetype-master.type = "github";
  inputs.src-freetype-master.owner = "jangko";
  inputs.src-freetype-master.repo = "freetype";
  inputs.src-freetype-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-freetype-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freetype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-freetype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}