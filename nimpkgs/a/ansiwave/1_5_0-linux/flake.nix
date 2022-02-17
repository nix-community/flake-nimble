{
  description = ''ANSI art + MIDI music editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ansiwave-1_5_0-linux.flake = false;
  inputs.src-ansiwave-1_5_0-linux.type = "github";
  inputs.src-ansiwave-1_5_0-linux.owner = "ansiwave";
  inputs.src-ansiwave-1_5_0-linux.repo = "ansiwave";
  inputs.src-ansiwave-1_5_0-linux.ref = "refs/tags/1.5.0-linux";
  
  
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";

  
  inputs."paramidi".type = "github";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".repo = "flake-nimble";
  inputs."paramidi".ref = "flake-pinning";
  inputs."paramidi".dir = "nimpkgs/p/paramidi";

  
  inputs."paramidi_soundfonts".type = "github";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".repo = "flake-nimble";
  inputs."paramidi_soundfonts".ref = "flake-pinning";
  inputs."paramidi_soundfonts".dir = "nimpkgs/p/paramidi_soundfonts";

  
  inputs."parasound".type = "github";
  inputs."parasound".owner = "riinr";
  inputs."parasound".repo = "flake-nimble";
  inputs."parasound".ref = "flake-pinning";
  inputs."parasound".dir = "nimpkgs/p/parasound";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";

  
  inputs."wavecore".type = "github";
  inputs."wavecore".owner = "riinr";
  inputs."wavecore".repo = "flake-nimble";
  inputs."wavecore".ref = "flake-pinning";
  inputs."wavecore".dir = "nimpkgs/w/wavecore";

  
  inputs."chrono".type = "github";
  inputs."chrono".owner = "riinr";
  inputs."chrono".repo = "flake-nimble";
  inputs."chrono".ref = "flake-pinning";
  inputs."chrono".dir = "nimpkgs/c/chrono";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ansiwave-1_5_0-linux, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiwave-1_5_0-linux;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-1_5_0-linux"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}