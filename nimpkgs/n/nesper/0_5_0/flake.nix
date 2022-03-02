{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nesper-0_5_0.flake = false;
  inputs.src-nesper-0_5_0.type = "github";
  inputs.src-nesper-0_5_0.owner = "elcritch";
  inputs.src-nesper-0_5_0.repo = "nesper";
  inputs.src-nesper-0_5_0.ref = "refs/tags/0.5.0";
  inputs.src-nesper-0_5_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."msgpack4nim".type = "github";
  # inputs."msgpack4nim".owner = "riinr";
  # inputs."msgpack4nim".repo = "flake-nimble";
  # inputs."msgpack4nim".ref = "flake-pinning";
  # inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";
  # inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."stew".type = "github";
  # inputs."stew".owner = "riinr";
  # inputs."stew".repo = "flake-nimble";
  # inputs."stew".ref = "flake-pinning";
  # inputs."stew".dir = "nimpkgs/s/stew";
  # inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nesper-0_5_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesper-0_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nesper-0_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}