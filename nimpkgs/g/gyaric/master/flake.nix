{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
  inputs.src-gyaric-master.flake = false;
  inputs.src-gyaric-master.type = "github";
  inputs.src-gyaric-master.owner = "jiro4989";
  inputs.src-gyaric-master.repo = "gyaric";
  inputs.src-gyaric-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gyaric-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gyaric-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gyaric-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}