{
  description = ''Nim bindings for stb_truetype.'';
  inputs.src-stb_truetype-master.flake = false;
  inputs.src-stb_truetype-master.type = "github";
  inputs.src-stb_truetype-master.owner = "guzba";
  inputs.src-stb_truetype-master.repo = "stb_truetype";
  inputs.src-stb_truetype-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stb_truetype-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_truetype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stb_truetype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}