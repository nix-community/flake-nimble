{
  description = ''Nim wrappers for ESP-IDF (ESP32)'';
  inputs.src-nesper-v0_6_0.flake = false;
  inputs.src-nesper-v0_6_0.type = "github";
  inputs.src-nesper-v0_6_0.owner = "elcritch";
  inputs.src-nesper-v0_6_0.repo = "nesper";
  inputs.src-nesper-v0_6_0.ref = "refs/tags/v0.6.0";
  
  
  inputs."msgpack4nim".url = "path:../../../m/msgpack4nim";
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  
  inputs."stew".url = "path:../../../s/stew";
  inputs."stew".type = "github";
  inputs."stew".owner = "riinr";
  inputs."stew".repo = "flake-nimble";
  inputs."stew".ref = "flake-pinning";
  inputs."stew".dir = "nimpkgs/s/stew";

  outputs = { self, nixpkgs, src-nesper-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nesper-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nesper-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}