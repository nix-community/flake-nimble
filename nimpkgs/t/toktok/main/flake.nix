{
  description = ''Generic tokenizer written in Nim language 👑 Powered by Nim's Macros'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-toktok-main.flake = false;
  inputs.src-toktok-main.type = "github";
  inputs.src-toktok-main.owner = "openpeep";
  inputs.src-toktok-main.repo = "toktok";
  inputs.src-toktok-main.ref = "refs/heads/main";
  inputs.src-toktok-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-toktok-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toktok-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-toktok-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}