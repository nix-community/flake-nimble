{
  description = ''ANSI art + MIDI music editor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ansiwave-1_3_5-linux.flake = false;
  inputs.src-ansiwave-1_3_5-linux.type = "github";
  inputs.src-ansiwave-1_3_5-linux.owner = "ansiwave";
  inputs.src-ansiwave-1_3_5-linux.repo = "ansiwave";
  inputs.src-ansiwave-1_3_5-linux.ref = "refs/tags/1.3.5-linux";
  inputs.src-ansiwave-1_3_5-linux.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";
  inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."paramidi".type = "github";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".repo = "flake-nimble";
  inputs."paramidi".ref = "flake-pinning";
  inputs."paramidi".dir = "nimpkgs/p/paramidi";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."paramidi_soundfonts".type = "github";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".repo = "flake-nimble";
  inputs."paramidi_soundfonts".ref = "flake-pinning";
  inputs."paramidi_soundfonts".dir = "nimpkgs/p/paramidi_soundfonts";
  inputs."paramidi_soundfonts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."parasound".type = "github";
  inputs."parasound".owner = "riinr";
  inputs."parasound".repo = "flake-nimble";
  inputs."parasound".ref = "flake-pinning";
  inputs."parasound".dir = "nimpkgs/p/parasound";
  inputs."parasound".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parasound".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."stb_image".type = "github";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".repo = "flake-nimble";
  inputs."stb_image".ref = "flake-pinning";
  inputs."stb_image".dir = "nimpkgs/s/stb_image";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."wavecore".type = "github";
  inputs."wavecore".owner = "riinr";
  inputs."wavecore".repo = "flake-nimble";
  inputs."wavecore".ref = "flake-pinning";
  inputs."wavecore".dir = "nimpkgs/w/wavecore";
  inputs."wavecore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wavecore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."chrono".type = "github";
  inputs."chrono".owner = "riinr";
  inputs."chrono".repo = "flake-nimble";
  inputs."chrono".ref = "flake-pinning";
  inputs."chrono".dir = "nimpkgs/c/chrono";
  inputs."chrono".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chrono".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ansiwave-1_3_5-linux, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiwave-1_3_5-linux;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ansiwave-1_3_5-linux"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}