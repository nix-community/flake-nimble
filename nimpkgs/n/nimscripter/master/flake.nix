{
  description = ''Easy to use Nim/Nimscript interop, for scripting logic in compiled binaries.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimscripter-master.flake = false;
  inputs.src-nimscripter-master.type = "github";
  inputs.src-nimscripter-master.owner = "beef331";
  inputs.src-nimscripter-master.repo = "nimscripter";
  inputs.src-nimscripter-master.ref = "refs/heads/master";
  inputs.src-nimscripter-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/disruptek/assume".type = "github";
  # inputs."https://github.com/disruptek/assume".owner = "riinr";
  # inputs."https://github.com/disruptek/assume".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/assume".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/assume".dir = "nimpkgs/h/https://github.com/disruptek/assume";
  # inputs."https://github.com/disruptek/assume".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/assume".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-Nimscripter-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Nimscripter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-Nimscripter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}