{
  description = ''gyaric is a module to encode/decode text to unreadable gyaru's text.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-gyaric-master.flake = false;
  inputs.src-gyaric-master.type = "github";
  inputs.src-gyaric-master.owner = "jiro4989";
  inputs.src-gyaric-master.repo = "gyaric";
  inputs.src-gyaric-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gyaric-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gyaric-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gyaric-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}